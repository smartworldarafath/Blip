.class Landroidx/appcompat/widget/AppCompatTextHelper$1;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/ref/WeakReference;

.field public final synthetic d:Landroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->d:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 5
    .line 6
    iput p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->a:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->b:I

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->c:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->a:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->b:I

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {p1, v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->d:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 20
    .line 21
    iget-boolean v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->n:Z

    .line 22
    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    iput-object p1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 26
    .line 27
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$1;->c:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextHelper$2;

    .line 46
    .line 47
    invoke-direct {v1, p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextHelper$2;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    sget-object v1, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->a:Landroidx/collection/LruCache;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->getFontVariationSettings()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-static {p0, v2}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    invoke-static {p0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void
.end method
