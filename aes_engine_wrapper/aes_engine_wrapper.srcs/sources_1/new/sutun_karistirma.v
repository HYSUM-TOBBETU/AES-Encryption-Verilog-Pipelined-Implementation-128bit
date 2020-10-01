`timescale 1ns / 1ps

module sutun_karistirma(
    
    input clk,
    input  [127:0] satir_kaydirilmis_matris,
    output reg [127:0] sutun_karistirilmis_matris
    
    );

    reg [7:0] islem3ilecarpma[15:0];
    reg [7:0] islem2ilecarpma[15:0];
    reg [7:0] islem1ilecarpma1[15:0];
    reg [7:0] islem1ilecarpma2[15:0];

    always @(posedge clk) begin
    
    islem3ilecarpma [0] <= satir_kaydirilmis_matris[119:112] ^ ( satir_kaydirilmis_matris[119] == 0 ? {satir_kaydirilmis_matris[118:112],1'b0} : ({satir_kaydirilmis_matris[118:112],1'b0} ^ 8'h1b) );
    islem2ilecarpma [0] <= ( satir_kaydirilmis_matris[127] == 0 ? {satir_kaydirilmis_matris[126:120],1'b0} : ({satir_kaydirilmis_matris[126:120],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[0] <= satir_kaydirilmis_matris[111:104];
    islem1ilecarpma2[0] <= satir_kaydirilmis_matris[103:96]; 

    islem3ilecarpma [1] <= ( satir_kaydirilmis_matris[111:104]^( satir_kaydirilmis_matris[111] == 0 ? {satir_kaydirilmis_matris[110:104],1'b0} : ({satir_kaydirilmis_matris[110:104],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [1] <= ( satir_kaydirilmis_matris[119] == 0 ? {satir_kaydirilmis_matris[118:112],1'b0} : ({satir_kaydirilmis_matris[118:112],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[1] <= satir_kaydirilmis_matris[127:120];
    islem1ilecarpma2[1] <= satir_kaydirilmis_matris[103:96] ;

    islem3ilecarpma [2] <= ( satir_kaydirilmis_matris[103:96]^( satir_kaydirilmis_matris[103] == 0 ? {satir_kaydirilmis_matris[102:96],1'b0} : ({satir_kaydirilmis_matris[102:96],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [2] <= ( satir_kaydirilmis_matris[111] == 0 ? {satir_kaydirilmis_matris[110:104],1'b0} : ({satir_kaydirilmis_matris[110:104],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[2] <= satir_kaydirilmis_matris[127:120];
    islem1ilecarpma2[2] <= satir_kaydirilmis_matris[119:112];

    islem3ilecarpma [3] <= ( satir_kaydirilmis_matris[127:120]^( satir_kaydirilmis_matris[127] == 0 ? {satir_kaydirilmis_matris[126:120],1'b0} : ({satir_kaydirilmis_matris[126:120],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [3] <= ( satir_kaydirilmis_matris[103] == 0 ? {satir_kaydirilmis_matris[102:96],1'b0} : ({satir_kaydirilmis_matris[102:96],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[3] <= satir_kaydirilmis_matris[119:112];
    islem1ilecarpma2[3] <= satir_kaydirilmis_matris[111:104];

    islem3ilecarpma [4] <= ( satir_kaydirilmis_matris[87:80]^( satir_kaydirilmis_matris[87] == 0 ? {satir_kaydirilmis_matris[86:80],1'b0} : ({satir_kaydirilmis_matris[86:80],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [4] <= ( satir_kaydirilmis_matris[95] == 0 ? {satir_kaydirilmis_matris[94:88],1'b0} : ({satir_kaydirilmis_matris[94:88],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[4] <= satir_kaydirilmis_matris[79:72];
    islem1ilecarpma2[4] <= satir_kaydirilmis_matris[71:64];

    islem3ilecarpma [5] <= ( satir_kaydirilmis_matris[79:72]^( satir_kaydirilmis_matris[79] == 0 ? {satir_kaydirilmis_matris[78:72],1'b0} : ({satir_kaydirilmis_matris[78:72],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [5] <= ( satir_kaydirilmis_matris[87] == 0 ? {satir_kaydirilmis_matris[86:80],1'b0} : ({satir_kaydirilmis_matris[86:80],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[5] <= satir_kaydirilmis_matris[95:88];
    islem1ilecarpma2[5] <= satir_kaydirilmis_matris[71:64];

    islem3ilecarpma [6] <= ( satir_kaydirilmis_matris[71:64]^( satir_kaydirilmis_matris[71] == 0 ? {satir_kaydirilmis_matris[70:64],1'b0} : ({satir_kaydirilmis_matris[70:64],1'b0} ^ 8'h1b) ) ); 
    islem2ilecarpma [6] <= ( satir_kaydirilmis_matris[79] == 0 ? {satir_kaydirilmis_matris[78:72],1'b0} : ({satir_kaydirilmis_matris[78:72],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[6] <= satir_kaydirilmis_matris[95:88];
    islem1ilecarpma2[6] <= satir_kaydirilmis_matris[87:80];

    islem3ilecarpma [7] <= ( satir_kaydirilmis_matris[95:88]^( satir_kaydirilmis_matris[95] == 0 ? {satir_kaydirilmis_matris[94:88],1'b0} : ({satir_kaydirilmis_matris[94:88],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [7] <= ( satir_kaydirilmis_matris[71] == 0 ? {satir_kaydirilmis_matris[70:64],1'b0} : ({satir_kaydirilmis_matris[70:64],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[7] <= satir_kaydirilmis_matris[87:80];
    islem1ilecarpma2[7] <= satir_kaydirilmis_matris[79:72];

    islem3ilecarpma [8] <= ( satir_kaydirilmis_matris[55:48]^( satir_kaydirilmis_matris[55] == 0 ? {satir_kaydirilmis_matris[54:48],1'b0} : ({satir_kaydirilmis_matris[54:48],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [8] <= ( satir_kaydirilmis_matris[63] == 0 ? {satir_kaydirilmis_matris[62:56],1'b0} : ({satir_kaydirilmis_matris[62:56],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[8] <= satir_kaydirilmis_matris[47:40];
    islem1ilecarpma2[8] <= satir_kaydirilmis_matris[39:32];

    islem3ilecarpma [9] <= ( satir_kaydirilmis_matris[47:40]^( satir_kaydirilmis_matris[47] == 0 ? {satir_kaydirilmis_matris[46:40],1'b0} : ({satir_kaydirilmis_matris[46:40],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [9] <= ( satir_kaydirilmis_matris[55] == 0 ? {satir_kaydirilmis_matris[54:48],1'b0} : ({satir_kaydirilmis_matris[54:48],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[9] <= satir_kaydirilmis_matris[63:56];
    islem1ilecarpma2[9] <= satir_kaydirilmis_matris[39:32];

    islem3ilecarpma [10] <= ( satir_kaydirilmis_matris[39:32]^( satir_kaydirilmis_matris[39] == 0 ? {satir_kaydirilmis_matris[38:32],1'b0} : ({satir_kaydirilmis_matris[38:32],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [10] <= ( satir_kaydirilmis_matris[47] == 0 ? {satir_kaydirilmis_matris[46:40],1'b0} : ({satir_kaydirilmis_matris[46:40],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[10] <= satir_kaydirilmis_matris[63:56];
    islem1ilecarpma2[10] <= satir_kaydirilmis_matris[55:48];

    islem3ilecarpma [11] <= ( satir_kaydirilmis_matris[63:56]^( satir_kaydirilmis_matris[63] == 0 ? {satir_kaydirilmis_matris[62:56],1'b0} : ({satir_kaydirilmis_matris[62:56],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [11] <= ( satir_kaydirilmis_matris[39] == 0 ? {satir_kaydirilmis_matris[38:32],1'b0} : ({satir_kaydirilmis_matris[38:32],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[11] <= satir_kaydirilmis_matris[55:48];
    islem1ilecarpma2[11] <= satir_kaydirilmis_matris[47:40];
  
    islem3ilecarpma [12] <= ( satir_kaydirilmis_matris[23:16]^( satir_kaydirilmis_matris[23] == 0 ? {satir_kaydirilmis_matris[22:16],1'b0} : ({satir_kaydirilmis_matris[22:16],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [12] <= ( satir_kaydirilmis_matris[31] == 0 ? {satir_kaydirilmis_matris[30:24],1'b0} : ({satir_kaydirilmis_matris[30:24],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[12] <= satir_kaydirilmis_matris[15:8];
    islem1ilecarpma2[12] <= satir_kaydirilmis_matris[7:0];

    islem3ilecarpma [13] <= ( satir_kaydirilmis_matris[15:8]^( satir_kaydirilmis_matris[15] == 0 ? {satir_kaydirilmis_matris[14:8],1'b0} : ({satir_kaydirilmis_matris[14:8],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [13] <= ( satir_kaydirilmis_matris[23] == 0 ? {satir_kaydirilmis_matris[22:16],1'b0} : ({satir_kaydirilmis_matris[22:16],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[13] <= satir_kaydirilmis_matris[31:24];
    islem1ilecarpma2[13] <= satir_kaydirilmis_matris[7:0];

    islem3ilecarpma [14] <= ( satir_kaydirilmis_matris[7:0]^( satir_kaydirilmis_matris[7] == 0 ? {satir_kaydirilmis_matris[6:0],1'b0} : ({satir_kaydirilmis_matris[6:0],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [14] <= ( satir_kaydirilmis_matris[15] == 0 ? {satir_kaydirilmis_matris[14:8],1'b0} : ({satir_kaydirilmis_matris[14:8],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[14] <= satir_kaydirilmis_matris[31:24];
    islem1ilecarpma2[14] <= satir_kaydirilmis_matris[23:16];
 
    islem3ilecarpma [15] <= ( satir_kaydirilmis_matris[31:24]^( satir_kaydirilmis_matris[31] == 0 ? {satir_kaydirilmis_matris[30:24],1'b0} : ({satir_kaydirilmis_matris[30:24],1'b0} ^ 8'h1b) ) );
    islem2ilecarpma [15] <= ( satir_kaydirilmis_matris[7] == 0 ? {satir_kaydirilmis_matris[6:0],1'b0} : ({satir_kaydirilmis_matris[6:0],1'b0} ^ 8'h1b) );
    islem1ilecarpma1[15] <= satir_kaydirilmis_matris[23:16];
    islem1ilecarpma2[15] <= satir_kaydirilmis_matris[15:8];


    sutun_karistirilmis_matris[127:120] <= islem3ilecarpma[0]  ^ islem2ilecarpma[0]  ^ islem1ilecarpma1[0]  ^ islem1ilecarpma2[0];
    sutun_karistirilmis_matris[119:112] <= islem3ilecarpma[1]  ^ islem2ilecarpma[1]  ^ islem1ilecarpma1[1]  ^ islem1ilecarpma2[1];
    sutun_karistirilmis_matris[111:104] <= islem3ilecarpma[2]  ^ islem2ilecarpma[2]  ^ islem1ilecarpma1[2]  ^ islem1ilecarpma2[2];
    sutun_karistirilmis_matris[103:96]  <= islem3ilecarpma[3]  ^ islem2ilecarpma[3]  ^ islem1ilecarpma1[3]  ^ islem1ilecarpma2[3];

    sutun_karistirilmis_matris[95:88]   <= islem3ilecarpma[4]  ^ islem2ilecarpma[4]  ^ islem1ilecarpma1[4]  ^ islem1ilecarpma2[4];
    sutun_karistirilmis_matris[87:80]   <= islem3ilecarpma[5]  ^ islem2ilecarpma[5]  ^ islem1ilecarpma1[5]  ^ islem1ilecarpma2[5];
    sutun_karistirilmis_matris[79:72]   <= islem3ilecarpma[6]  ^ islem2ilecarpma[6]  ^ islem1ilecarpma1[6]  ^ islem1ilecarpma2[6];
    sutun_karistirilmis_matris[71:64]   <= islem3ilecarpma[7]  ^ islem2ilecarpma[7]  ^ islem1ilecarpma1[7]  ^ islem1ilecarpma2[7];
                                          
    sutun_karistirilmis_matris[63:56]   <= islem3ilecarpma[8]  ^ islem2ilecarpma[8]  ^ islem1ilecarpma1[8]  ^ islem1ilecarpma2[8] ;
    sutun_karistirilmis_matris[55:48]   <= islem3ilecarpma[9]  ^ islem2ilecarpma[9]  ^ islem1ilecarpma1[9]  ^ islem1ilecarpma2[9] ;
    sutun_karistirilmis_matris[47:40]   <= islem3ilecarpma[10] ^ islem2ilecarpma[10] ^ islem1ilecarpma1[10] ^ islem1ilecarpma2[10];
    sutun_karistirilmis_matris[39:32]   <= islem3ilecarpma[11] ^ islem2ilecarpma[11] ^ islem1ilecarpma1[11] ^ islem1ilecarpma2[11];
                                          
    sutun_karistirilmis_matris[31:24]   <= islem3ilecarpma[12] ^ islem2ilecarpma[12] ^ islem1ilecarpma1[12] ^ islem1ilecarpma2[12];
    sutun_karistirilmis_matris[23:16]   <= islem3ilecarpma[13] ^ islem2ilecarpma[13] ^ islem1ilecarpma1[13] ^ islem1ilecarpma2[13];
    sutun_karistirilmis_matris[15:8]    <= islem3ilecarpma[14] ^ islem2ilecarpma[14] ^ islem1ilecarpma1[14] ^ islem1ilecarpma2[14];
    sutun_karistirilmis_matris[7:0]     <= islem3ilecarpma[15] ^ islem2ilecarpma[15] ^ islem1ilecarpma1[15] ^ islem1ilecarpma2[15];

    end

endmodule