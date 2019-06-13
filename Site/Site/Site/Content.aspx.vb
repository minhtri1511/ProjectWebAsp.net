Public Class aspx
    Inherits BasePage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Accout_TextChanged(sender As Object, e As EventArgs) Handles Accout.TextChanged

    End Sub

    Protected Sub OK_Click(sender As Object, e As EventArgs) Handles OK.Click
        If Accout.Text = "" Then
            Label1.Text = "Bạn Chưa Nhập Tài Khoản"
        ElseIf Password.Text = "" Then
            Label1.Text = "Bạn Chưa Nhập Mật Khẩu"
        Else
            Label1.Text = "Đăng Nhập Thành Công!"
        End If
    End Sub

End Class