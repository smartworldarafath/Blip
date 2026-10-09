.class Lcom/google/android/material/textfield/ClearTextEndIconDelegate$5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic j:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$5;->j:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$5;->j:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
