.class final Landroidx/compose/ui/text/android/HorizontalPositionCache;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/text/android/TextLayout;

.field public b:I

.field public c:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/android/TextLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a:Landroidx/compose/ui/text/android/TextLayout;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/compose/ui/text/android/HorizontalPositionCache;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(IZZZ)F
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a:Landroidx/compose/ui/text/android/TextLayout;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 8
    .line 9
    invoke-static {v3, p1, p2}, Landroidx/compose/ui/text/android/LayoutCompat_androidKt;->a(Landroid/text/Layout;IZ)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, v2, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 14
    .line 15
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/android/TextLayout;->g(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eq p1, v4, :cond_1

    .line 24
    .line 25
    if-ne p1, v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v3, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move v3, v0

    .line 31
    :goto_1
    mul-int/lit8 v4, p1, 0x4

    .line 32
    .line 33
    if-eqz p4, :cond_2

    .line 34
    .line 35
    if-eqz v3, :cond_4

    .line 36
    .line 37
    move v0, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    if-eqz v3, :cond_3

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    const/4 v0, 0x3

    .line 44
    :cond_4
    :goto_2
    add-int/2addr v4, v0

    .line 45
    iget v0, p0, Landroidx/compose/ui/text/android/HorizontalPositionCache;->b:I

    .line 46
    .line 47
    if-ne v0, v4, :cond_5

    .line 48
    .line 49
    iget p0, p0, Landroidx/compose/ui/text/android/HorizontalPositionCache;->c:F

    .line 50
    .line 51
    return p0

    .line 52
    :cond_5
    if-eqz p4, :cond_6

    .line 53
    .line 54
    invoke-virtual {v2, p1, p2}, Landroidx/compose/ui/text/android/TextLayout;->k(IZ)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    goto :goto_3

    .line 59
    :cond_6
    invoke-virtual {v2, p1, p2}, Landroidx/compose/ui/text/android/TextLayout;->l(IZ)F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    :goto_3
    if-eqz p3, :cond_7

    .line 64
    .line 65
    iput v4, p0, Landroidx/compose/ui/text/android/HorizontalPositionCache;->b:I

    .line 66
    .line 67
    iput p1, p0, Landroidx/compose/ui/text/android/HorizontalPositionCache;->c:F

    .line 68
    .line 69
    :cond_7
    return p1
.end method
