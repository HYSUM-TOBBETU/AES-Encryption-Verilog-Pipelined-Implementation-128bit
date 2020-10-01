# AES-Encyrption-Verilog-Pipelined-Implementation-128bit
Device: Zedboard xc7z020clg484-1, Clock Rate: 319 MHz, Tool: Vivado 2018.3, Language: Verilog
# AES-Encyrption-in-Verilog-Pipelined-128bit
Device: Zedboard xc7z020clg484-1, Clock Rate: 319 MHz, Tool: Vivado 2018.3, Language: Verilog

Code file locations probably you are looking for:

aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new

For testbench file:
aes_engine_wrapper/aes_engine_wrapper.srcs/sim_1/new

For constraint file:
aes_engine_wrapper/aes_engine_wrapper.srcs/constrs_1/new

Most of the other files are for vivado project components such as clock.

aes_wrapper provides sbox,rcon matrices and key, blocks for the test and includes clock which is working up to 319 MHz.

sbox and rcon matrices are inputs for aes_engine because if you set these matrices in the top module (aes_wrapper) clock rate is increasing.

//
We used bits of blocks as a matrix in this sequence:


- |127:120  95:88  63:56  31:24|
- |119:112  87:80  55:48  23:16|
- |111:104  79:72  47:40  15:8 |
- |103:96   71:64  39:32  7:0  |


//
In mix_columns (sutun_karistirma) module there is no lookup table, just there is some xor additions and this is also increasing clock rate.

The logic of mix_columns is like that:

- We need all columns of the matrix what we have multiply by MDS (Maximum Distance Seperable) matrix, and we need to know after each multiplying we are doing xor operation instead of addition. The first different is that for matrix multiplying, other matrix operations are same.  

MDS matrix:

- |2 3 1 1|
- |1 2 3 1|
- |1 1 2 3|
- |3 1 1 2|

- Multiply by 1: There is no operation.
- Multiply by 2: If there is 0 the head of the 8 bit number --> just add zero at the end of the number (or shift one left - same)
                 If there is 1 the head of the 8 bit number --> add zero at the end of the number and then xor with 8'h1B (0001 1011) number (because of galois field operations)
- Multiply by 3: Do all the controls and operations in multiply by 2 and then xor with which column you are using for multiplying.
//

Most of the file and variable names are written in Turkish but does not matter for the logic if you are looking for.

- bayt_degistirme --> subbytes
- satir_kaydirma --> shiftrows
- sutun_karistirma --> mixcolumns
- tur_anahtari --> roundkey
- tur_anahtari_ile_toplama --> addroundkey

bayt_degistirme(subbytes) and tur_anahtari(roundkey) modules are very good pipeline examples.
