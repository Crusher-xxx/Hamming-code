library ieee;
use ieee.std_logic_1164.all;


entity lab1 is
	port(	C: in std_logic;
			data: in std_logic_vector(0 to 15);
			Q: out std_logic_vector(0 to 15 + 5)	);
end lab1;


architecture behaviour of lab1 is
	constant total_control_bits: integer := 5;
	type bit_sequence is array (integer range <>) of integer range 0 to 1;
	
	
	-- Целое число (бит) в сигнал
	function to_logic(value: integer) return std_logic is
	begin
		if value = 0 then
			return '0';
		else
			return '1';
		end if;
	end function;
	
	
	-- Сигнал в целое число (бит)
	function logic_to_bit(value: std_logic) return integer is
	begin
		if value = '0' then
			return 0;
		else
			return 1;
		end if;
	end function;
	
	
	-- Конвертировать последовательность бит в последовательность сигналов
	function to_vec(seq: bit_sequence) return std_logic_vector is
		variable vec: std_logic_vector(0 to seq'length - 1);
	begin
		for i in 0 to seq'length - 1 loop
			vec(i) := to_logic(seq(i));
		end loop;
		return vec;
	end function;
	
	
	-- Конвертировать последовательность сигналов в последовательность бит
	function to_bit_seq(vec: std_logic_vector) return bit_sequence is
		variable seq: bit_sequence(0 to vec'length - 1);
	begin
		for i in 0 to vec'length - 1 loop
			seq(i) := logic_to_bit(vec(i));
		end loop;
		return seq;
	end function;
	
	
	-- Вернуть сумму элементов последовательности в интервале
	function sum_bit_seq(seq: bit_sequence; start, stop: integer) return integer is
		variable sum: integer := 0;
		variable stp: integer := stop;
	begin
		if stop > seq'length - 1 then
			stp := seq'length - 1;
		end if;
		for i in start to stp loop
			sum := sum + seq(i);
		end loop;
		return sum;
	end function;
	
	
	-- Добавить к последовательности контрольные биты (создать заготовку для кода Хэмминга)
	function get_hamming_blank(seq: bit_sequence) return bit_sequence is
		variable blank: bit_sequence(0 to Q'length - 1);
		variable i_sequence: integer := 0;
		variable i_control_bit: integer := 1;
	begin
		for i_blank in 0 to Q'length - 1 loop
			-- Если здесь должен стоять контрольный бит, вставим его
			if i_blank + 1 = i_control_bit then
				blank(i_blank) := 0;
				i_control_bit := i_control_bit * 2;
			-- Если здесь должен быть исходный бит, оставляем его
			else
				blank(i_blank) := seq(i_sequence);
				i_sequence := i_sequence + 1;
			end if;
		end loop;
		return blank;
	end function;
	
	
	-- Вернуть последовательность контрольных битов для данного кода
	function get_control_bits(hamming_code: bit_sequence) return bit_sequence is
		variable control_bits: bit_sequence(0 to total_control_bits - 1);
		variable control_bit_index: integer := 1;
		variable control_start: integer;
		variable control_end: integer;
		variable sum: integer;
		variable add_bit_index: integer := 0;
	begin
		while control_bit_index < hamming_code'length loop
			sum := 0;
			control_start := control_bit_index - 1;
			while control_start < hamming_code'length loop
				control_end := control_start + control_bit_index - 1;
				sum := sum + sum_bit_seq(hamming_code, control_start, control_end);
				control_start := control_start + control_bit_index * 2;
			end loop;
			
			sum := sum - hamming_code(control_bit_index - 1);
			control_bits(add_bit_index) := sum mod 2;
			add_bit_index := add_bit_index + 1;
			control_bit_index := control_bit_index	 * 2;
		end loop;
		return control_bits;
	end function;
	
	
	-- Присвоить контрольные биты
	function set_control_bits(hamming_code, control_bits: bit_sequence) return bit_sequence is
		variable result: bit_sequence(0 to hamming_code'length - 1) := hamming_code;
		variable i: integer := 1;
		variable c: integer := 0;
	begin
		while i < result'length loop
			result(i - 1) := control_bits(c);
			i := i * 2;
			c := c + 1;
		end loop;
		return result;
	end function;
	
	
	-- Вернуть код Хэминга
	function get_hamming_code(seq: bit_sequence) return bit_sequence is
		variable hamming_code: bit_sequence(0 to Q'length - 1);
		variable control_bits: bit_sequence(0 to total_control_bits - 1);
	begin
		hamming_code := get_hamming_blank(seq);
		control_bits := get_control_bits(hamming_code);
		hamming_code := set_control_bits(hamming_code, control_bits);
		return hamming_code;
	end function;
	
	
begin
	process(C) is
		variable data_as_bit_seq: bit_sequence(0 to data'length - 1);
		variable result_as_bit_seq: bit_sequence(0 to Q'length - 1);
	begin
		data_as_bit_seq := to_bit_seq(data);
		result_as_bit_seq := get_hamming_code(data_as_bit_seq);
		Q <= to_vec(result_as_bit_seq);
	end process;
end architecture;
