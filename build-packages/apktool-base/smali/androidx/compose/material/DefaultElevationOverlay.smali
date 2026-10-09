.class final Landroidx/compose/material/DefaultElevationOverlay;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/material/ElevationOverlay;


# static fields
.field public static final a:Landroidx/compose/material/DefaultElevationOverlay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/DefaultElevationOverlay;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/DefaultElevationOverlay;->a:Landroidx/compose/material/DefaultElevationOverlay;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(JFLandroidx/compose/runtime/Composer;I)J
    .locals 3

    .line 1
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const p0, -0x648f4fbd

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p4}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p5, 0x0

    .line 14
    invoke-static {p3, p5}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 15
    .line 16
    .line 17
    move-result p5

    .line 18
    const/4 v0, 0x0

    .line 19
    if-lez p5, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->g()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const p0, -0x414df4ca

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Landroidx/compose/material/ElevationOverlayKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 34
    .line 35
    const/high16 p0, 0x3f800000    # 1.0f

    .line 36
    .line 37
    add-float/2addr p3, p0

    .line 38
    float-to-double v1, p3

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    double-to-float p0, v1

    .line 44
    const/high16 p3, 0x40900000    # 4.5f

    .line 45
    .line 46
    mul-float/2addr p0, p3

    .line 47
    const/high16 p3, 0x40000000    # 2.0f

    .line 48
    .line 49
    add-float/2addr p0, p3

    .line 50
    const/high16 p3, 0x42c80000    # 100.0f

    .line 51
    .line 52
    div-float/2addr p0, p3

    .line 53
    invoke-static {p1, p2, p4}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-static {v1, v2, p0}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const p0, -0x414bd7be

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 79
    .line 80
    .line 81
    return-wide p1
.end method
