.class Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final d:Landroid/text/TextWatcher;

.field public final e:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field public final f:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->d:Landroid/text/TextWatcher;

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->e:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 17
    .line 18
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->f:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 24
    .line 25
    return-void
.end method

.method public static d(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->b:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f080075

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x7f1100cc

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->n0:Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->e:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    check-cast v2, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->f:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 54
    .line 55
    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->r0:Ljava/util/LinkedHashSet;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/16 v1, 0x10

    .line 71
    .line 72
    if-eq v0, v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/16 v1, 0x80

    .line 79
    .line 80
    if-eq v0, v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/16 v1, 0x90

    .line 87
    .line 88
    if-eq v0, v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/16 v1, 0xe0

    .line 95
    .line 96
    if-ne v0, v1, :cond_2

    .line 97
    .line 98
    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    return-void
.end method
