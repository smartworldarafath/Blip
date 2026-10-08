.class public abstract Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateConstructorForUtilityClass"
    }
.end annotation


# direct methods
.method public static a(Landroidx/appcompat/widget/AppCompatEditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    new-instance p2, Lp;

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    invoke-direct {p2, v0, p0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;Lp;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
