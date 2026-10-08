.class public abstract Landroidx/compose/ui/graphics/colorspace/Illuminant;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field public static final b:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field public static final c:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field public static final d:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field public static final e:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 2
    .line 3
    const v1, 0x3e9ec02f    # 0.31006f

    .line 4
    .line 5
    .line 6
    const v2, 0x3ea1dfb9    # 0.31616f

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->a:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 15
    .line 16
    const v1, 0x3eb0fba9

    .line 17
    .line 18
    .line 19
    const v2, 0x3eb78d50    # 0.3585f

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->b:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 26
    .line 27
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 28
    .line 29
    const v1, 0x3ea4b33e    # 0.32168f

    .line 30
    .line 31
    .line 32
    const v2, 0x3eace315    # 0.33767f

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->c:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 39
    .line 40
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 41
    .line 42
    const v1, 0x3ea01b86

    .line 43
    .line 44
    .line 45
    const v2, 0x3ea8754f    # 0.32902f

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->d:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    new-array v0, v0, [F

    .line 55
    .line 56
    fill-array-data v0, :array_0

    .line 57
    .line 58
    .line 59
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e:[F

    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f85
    .end array-data
.end method
