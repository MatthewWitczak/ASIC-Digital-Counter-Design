module counter #(
    parameter WIDTH = 8
)(
    input  wire             clk,
    input  wire             rst,
    output reg  [WIDTH-1:0] q
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= {WIDTH{1'b0}};
        else
            q <= q + 1'b1;
    end

endmodule

