.class Lcom/google/android/material/timepicker/ChipTextInputComboView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;
    }
.end annotation


# instance fields
.field public final j:Lcom/google/android/material/chip/Chip;

.field public final k:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0d0041

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/google/android/material/chip/Chip;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->j:Lcom/google/android/material/chip/Chip;

    .line 19
    .line 20
    const v1, 0x7f0d0042

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->k:Landroid/widget/EditText;

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeHintLocales(Landroid/os/LocaleList;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    const p1, 0x7f0a0126

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->j:Lcom/google/android/material/chip/Chip;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->k:Landroid/widget/EditText;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeHintLocales(Landroid/os/LocaleList;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setChecked(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->j:Lcom/google/android/material/chip/Chip;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x4

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->k:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->j:Lcom/google/android/material/chip/Chip;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTag(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->j:Lcom/google/android/material/chip/Chip;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toggle()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->j:Lcom/google/android/material/chip/Chip;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
