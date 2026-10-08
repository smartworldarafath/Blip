.class Landroidx/appcompat/widget/AppCompatTextHelper$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Landroid/graphics/Typeface;

.field public final synthetic l:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->j:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->k:Landroid/graphics/Typeface;

    .line 7
    .line 8
    iput p3, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->l:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->a:Landroidx/collection/LruCache;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->j:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getFontVariationSettings()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v2}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->k:Landroid/graphics/Typeface;

    .line 20
    .line 21
    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$2;->l:I

    .line 22
    .line 23
    invoke-virtual {v0, v2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
