.class public final Lio/sentry/android/replay/util/ComposeTextLayout;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/replay/util/TextLayout;


# instance fields
.field public final a:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextLayoutResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->f(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Lkotlin/math/MathKt;->b(F)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final b(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->b(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Lkotlin/math/MathKt;->b(F)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/ui/text/MultiParagraph;->f:I

    .line 6
    .line 7
    return p0
.end method

.method public final d(I)F
    .locals 5

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 4
    .line 5
    iget v1, v0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    .line 6
    .line 7
    iget-wide v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 8
    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    shr-long/2addr v2, v4

    .line 12
    long-to-int v2, v2

    .line 13
    int-to-float v2, v2

    .line 14
    cmpl-float v1, v1, v2

    .line 15
    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->m(I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroidx/compose/ui/text/MultiParagraphKt;->b(ILjava/util/List;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 39
    .line 40
    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->d:I

    .line 41
    .line 42
    sub-int/2addr p1, p0

    .line 43
    iget-object p0, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineWidth(I)F

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->e(I)F

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final f(I)F
    .locals 4

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 4
    .line 5
    iget v0, v0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    .line 6
    .line 7
    iget-wide v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 8
    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    shr-long/2addr v1, v3

    .line 12
    long-to-int v1, v1

    .line 13
    int-to-float v1, v1

    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->d(I)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method
