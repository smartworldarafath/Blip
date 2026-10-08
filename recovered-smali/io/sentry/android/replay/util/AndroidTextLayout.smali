.class public final Lio/sentry/android/replay/util/AndroidTextLayout;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/replay/util/TextLayout;


# instance fields
.field public final a:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/text/Layout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->a:Landroid/text/Layout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->a:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->a:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->a:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final d(I)F
    .locals 2

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->a:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/text/Layout;->getEllipsizedWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/text/Layout;->getEllipsizedWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/text/Layout;->getEllipsizedWidth()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    return p0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 10

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->a:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/text/Spanned;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast v0, Landroid/text/Spanned;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const-class v3, Landroid/text/style/ForegroundColorSpan;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    array-length v2, v0

    .line 43
    const/high16 v3, -0x80000000

    .line 44
    .line 45
    move-object v5, v1

    .line 46
    :goto_0
    if-ge v4, v2, :cond_3

    .line 47
    .line 48
    aget-object v6, v0, v4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast v7, Landroid/text/Spanned;

    .line 58
    .line 59
    invoke-interface {v7, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    check-cast v8, Landroid/text/Spanned;

    .line 71
    .line 72
    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    const/4 v9, -0x1

    .line 77
    if-eq v7, v9, :cond_2

    .line 78
    .line 79
    if-ne v8, v9, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    sub-int/2addr v8, v7

    .line 83
    if-le v8, v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    move v3, v8

    .line 94
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    if-eqz v5, :cond_4

    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    const/high16 v0, -0x1000000

    .line 104
    .line 105
    or-int/2addr p0, v0

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_4
    :goto_2
    return-object v1
.end method

.method public final f(I)F
    .locals 2

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->a:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/text/Layout;->getEllipsizedWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/text/Layout;->getEllipsizedWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method
