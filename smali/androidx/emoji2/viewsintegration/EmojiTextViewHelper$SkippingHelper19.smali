.class Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;
.super Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkippingHelper19"
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;-><init>(Landroid/widget/TextView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->b(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->c:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->c(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
