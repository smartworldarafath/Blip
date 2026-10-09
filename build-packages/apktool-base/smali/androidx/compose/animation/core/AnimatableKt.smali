.class public abstract Landroidx/compose/animation/core/AnimatableKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/animation/core/AnimationVector1D;

.field public static final b:Landroidx/compose/animation/core/AnimationVector2D;

.field public static final c:Landroidx/compose/animation/core/AnimationVector3D;

.field public static final d:Landroidx/compose/animation/core/AnimationVector4D;

.field public static final e:Landroidx/compose/animation/core/AnimationVector1D;

.field public static final f:Landroidx/compose/animation/core/AnimationVector2D;

.field public static final g:Landroidx/compose/animation/core/AnimationVector3D;

.field public static final h:Landroidx/compose/animation/core/AnimationVector4D;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 2
    .line 3
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->a:Landroidx/compose/animation/core/AnimationVector1D;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 11
    .line 12
    invoke-direct {v0, v1, v1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->b:Landroidx/compose/animation/core/AnimationVector2D;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/animation/core/AnimationVector3D;

    .line 18
    .line 19
    invoke-direct {v0, v1, v1, v1}, Landroidx/compose/animation/core/AnimationVector3D;-><init>(FFF)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->c:Landroidx/compose/animation/core/AnimationVector3D;

    .line 23
    .line 24
    new-instance v0, Landroidx/compose/animation/core/AnimationVector4D;

    .line 25
    .line 26
    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->d:Landroidx/compose/animation/core/AnimationVector4D;

    .line 30
    .line 31
    new-instance v0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 32
    .line 33
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->e:Landroidx/compose/animation/core/AnimationVector1D;

    .line 39
    .line 40
    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 41
    .line 42
    invoke-direct {v0, v1, v1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->f:Landroidx/compose/animation/core/AnimationVector2D;

    .line 46
    .line 47
    new-instance v0, Landroidx/compose/animation/core/AnimationVector3D;

    .line 48
    .line 49
    invoke-direct {v0, v1, v1, v1}, Landroidx/compose/animation/core/AnimationVector3D;-><init>(FFF)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->g:Landroidx/compose/animation/core/AnimationVector3D;

    .line 53
    .line 54
    new-instance v0, Landroidx/compose/animation/core/AnimationVector4D;

    .line 55
    .line 56
    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Landroidx/compose/animation/core/AnimatableKt;->h:Landroidx/compose/animation/core/AnimationVector4D;

    .line 60
    .line 61
    return-void
.end method

.method public static a(F)Landroidx/compose/animation/core/Animatable;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v1, 0x3c23d70a    # 0.01f

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    sget-object v3, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 17
    .line 18
    invoke-direct {v0, p0, v3, v1, v2}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
