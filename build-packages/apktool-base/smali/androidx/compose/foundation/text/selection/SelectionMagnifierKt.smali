.class public abstract Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/animation/core/AnimationVector2D;

.field public static final b:Landroidx/compose/animation/core/TwoWayConverter;

.field public static final c:J

.field public static final d:Landroidx/compose/animation/core/SpringSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 2
    .line 3
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->a:Landroidx/compose/animation/core/AnimationVector2D;

    .line 9
    .line 10
    new-instance v0, Lle;

    .line 11
    .line 12
    const/16 v1, 0xf

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lle;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lle;

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lle;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->b:Landroidx/compose/animation/core/TwoWayConverter;

    .line 29
    .line 30
    const v0, 0x3c23d70a    # 0.01f

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-long v1, v1

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-long v3, v0

    .line 43
    const/16 v0, 0x20

    .line 44
    .line 45
    shl-long v0, v1, v0

    .line 46
    .line 47
    const-wide v5, 0xffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    and-long v2, v3, v5

    .line 53
    .line 54
    or-long/2addr v0, v2

    .line 55
    sput-wide v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->c:J

    .line 56
    .line 57
    new-instance v2, Landroidx/compose/animation/core/SpringSpec;

    .line 58
    .line 59
    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    .line 60
    .line 61
    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3}, Landroidx/compose/animation/core/SpringSpec;-><init>(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sput-object v2, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->d:Landroidx/compose/animation/core/SpringSpec;

    .line 68
    .line 69
    return-void
.end method
