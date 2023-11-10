using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BusinessObjects.Migrations
{
    /// <inheritdoc />
    public partial class ConstrainChange : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "Suppliers",
                keyColumn: "SupplierID",
                keyValue: 1,
                column: "SupplierAddress",
                value: "Dai Hoc FPT, Ha Noi");

            migrationBuilder.UpdateData(
                table: "Suppliers",
                keyColumn: "SupplierID",
                keyValue: 2,
                column: "SupplierAddress",
                value: "Dai Hoc FPT Co So 2, Ha Noi");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "Suppliers",
                keyColumn: "SupplierID",
                keyValue: 1,
                column: "SupplierAddress",
                value: "46 Nguyen Thai Binh, Ho Chi Minh");

            migrationBuilder.UpdateData(
                table: "Suppliers",
                keyColumn: "SupplierID",
                keyValue: 2,
                column: "SupplierAddress",
                value: "46 Nguyen Chanh Sat, Vung Tau");
        }
    }
}
