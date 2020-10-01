`timescale 1ns / 1ps

module bayt_degistirme(
    
    input clk,
    input [0:2047] sbox,
    input [127:0] durum_matrisi,
    output reg [127:0] bayt_degistirilmis_matris
    
    );

    reg [10:0] islem11 ;
    reg [10:0] islem12 ;
    reg [10:0] islem13 ;
    reg [10:0] islem14 ;
    reg [10:0] islem15 ;
    reg [10:0] islem16 ;
    reg [10:0] islem17 ;
    reg [10:0] islem18 ;
    reg [10:0] islem19 ;
    reg [10:0] islem110;
    reg [10:0] islem111;
    reg [10:0] islem112;
    reg [10:0] islem113;
    reg [10:0] islem114;
    reg [10:0] islem115;
    reg [10:0] islem116;

    reg [10:0] islem21 ;
    reg [10:0] islem22 ;
    reg [10:0] islem23 ;
    reg [10:0] islem24 ;
    reg [10:0] islem25 ;
    reg [10:0] islem26 ;
    reg [10:0] islem27 ;
    reg [10:0] islem28 ;
    reg [10:0] islem29 ;
    reg [10:0] islem210;
    reg [10:0] islem211;
    reg [10:0] islem212;
    reg [10:0] islem213;
    reg [10:0] islem214;
    reg [10:0] islem215;
    reg [10:0] islem216;

    reg [7:0] islem31 ;
    reg [7:0] islem32 ;
    reg [7:0] islem33 ;
    reg [7:0] islem34 ;
    reg [7:0] islem35 ;
    reg [7:0] islem36 ;
    reg [7:0] islem37 ;
    reg [7:0] islem38 ;
    reg [7:0] islem39 ;
    reg [7:0] islem310;
    reg [7:0] islem311;
    reg [7:0] islem312;
    reg [7:0] islem313;
    reg [7:0] islem314;
    reg [7:0] islem315;
    reg [7:0] islem316;
    
    always @(posedge clk) begin
    
    islem11  <= {durum_matrisi[127:120] ,3'b000};
    islem12  <= {durum_matrisi[119:112] ,3'b000};
    islem13  <= {durum_matrisi[111:104] ,3'b000};
    islem14  <= {durum_matrisi[103:96]  ,3'b000};
    islem15  <= {durum_matrisi[95 :88]  ,3'b000};
    islem16  <= {durum_matrisi[87 :80]  ,3'b000};
    islem17  <= {durum_matrisi[79 :72]  ,3'b000};
    islem18  <= {durum_matrisi[71 :64]  ,3'b000};
    islem19  <= {durum_matrisi[63 :56]  ,3'b000};
    islem110 <= {durum_matrisi[55 :48]  ,3'b000};
    islem111 <= {durum_matrisi[47 :40]  ,3'b000};
    islem112 <= {durum_matrisi[39 :32]  ,3'b000};
    islem113 <= {durum_matrisi[31 :24]  ,3'b000};
    islem114 <= {durum_matrisi[23 :16]  ,3'b000};
    islem115 <= {durum_matrisi[15 :8]   ,3'b000};
    islem116 <= {durum_matrisi[7  :0]   ,3'b000};

    islem21  <= {islem11 [10:3] ,3'b111};
    islem22  <= {islem12 [10:3] ,3'b111};
    islem23  <= {islem13 [10:3] ,3'b111};
    islem24  <= {islem14 [10:3] ,3'b111};
    islem25  <= {islem15 [10:3] ,3'b111};
    islem26  <= {islem16 [10:3] ,3'b111};
    islem27  <= {islem17 [10:3] ,3'b111};
    islem28  <= {islem18 [10:3] ,3'b111};
    islem29  <= {islem19 [10:3] ,3'b111};
    islem210 <= {islem110[10:3] ,3'b111};
    islem211 <= {islem111[10:3] ,3'b111};
    islem212 <= {islem112[10:3] ,3'b111};
    islem213 <= {islem113[10:3] ,3'b111};
    islem214 <= {islem114[10:3] ,3'b111};
    islem215 <= {islem115[10:3] ,3'b111};
    islem216 <= {islem116[10:3] ,3'b111};

    islem31  <= sbox [islem21 -:8];
    islem32  <= sbox [islem22 -:8];
    islem33  <= sbox [islem23 -:8];
    islem34  <= sbox [islem24 -:8];
    islem35  <= sbox [islem25 -:8];
    islem36  <= sbox [islem26 -:8];
    islem37  <= sbox [islem27 -:8];
    islem38  <= sbox [islem28 -:8];
    islem39  <= sbox [islem29 -:8];
    islem310 <= sbox [islem210-:8];
    islem311 <= sbox [islem211-:8];
    islem312 <= sbox [islem212-:8];
    islem313 <= sbox [islem213-:8];
    islem314 <= sbox [islem214-:8];
    islem315 <= sbox [islem215-:8];
    islem316 <= sbox [islem216-:8];
    
    bayt_degistirilmis_matris[127:120] <= islem31 ;
    bayt_degistirilmis_matris[119:112] <= islem32 ;
    bayt_degistirilmis_matris[111:104] <= islem33 ;
    bayt_degistirilmis_matris[103:96]  <= islem34 ;
    bayt_degistirilmis_matris[95:88]   <= islem35 ;
    bayt_degistirilmis_matris[87:80]   <= islem36 ;
    bayt_degistirilmis_matris[79:72]   <= islem37 ;
    bayt_degistirilmis_matris[71:64]   <= islem38 ;
    bayt_degistirilmis_matris[63:56]   <= islem39 ;
    bayt_degistirilmis_matris[55:48]   <= islem310;
    bayt_degistirilmis_matris[47:40]   <= islem311;
    bayt_degistirilmis_matris[39:32]   <= islem312;
    bayt_degistirilmis_matris[31:24]   <= islem313;
    bayt_degistirilmis_matris[23:16]   <= islem314;
    bayt_degistirilmis_matris[15:8]    <= islem315;
    bayt_degistirilmis_matris[7:0]     <= islem316;

    end

endmodule