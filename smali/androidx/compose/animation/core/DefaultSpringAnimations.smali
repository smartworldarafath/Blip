.class final Landroidx/compose/animation/core/DefaultSpringAnimations;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/animation/core/Animations;


# static fields
.field public static final a:Landroidx/compose/animation/core/DefaultSpringAnimations;

.field public static final b:Landroidx/compose/animation/core/FloatSpringSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/animation/core/DefaultSpringAnimations;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/animation/core/DefaultSpringAnimations;->a:Landroidx/compose/animation/core/DefaultSpringAnimations;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/animation/core/FloatSpringSpec;

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const v2, 0x44bb8000    # 1500.0f

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FF)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroidx/compose/animation/core/DefaultSpringAnimations;->b:Landroidx/compose/animation/core/FloatSpringSpec;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final get(I)Landroidx/compose/animation/core/FloatAnimationSpec;
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/animation/core/DefaultSpringAnimations;->b:Landroidx/compose/animation/core/FloatSpringSpec;

    .line 2
    .line 3
    return-object p0
.end method
