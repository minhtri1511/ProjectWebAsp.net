Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If txttk.Text = "" Then
            thongbao.Text = "***Tên tài khoản không được bỏ trống***"
        ElseIf txtmk.Text = "" Then
            thongbao.Text = "***Bạn chưa nhập mật khẩu***"
        ElseIf txtxnmk.Text = "" Then
            thongbao.Text = "***Bạn chưa xác nhận lại mật khẩu***"
        ElseIf email.Text = "" Then
            thongbao.Text = "***Bạn hãy nhập Email***"
        Else
            thongbao.Text = "Bạn đã đăng kí thành công với tên tài khoản là " + txttk.Text

            'SqlDataSource1.DataBind()

        End If

    End Sub

    Protected Sub txttk_TextChanged(sender As Object, e As EventArgs) Handles txttk.TextChanged

    End Sub

  


    
End Class