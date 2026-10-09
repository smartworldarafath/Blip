.class final Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/EnterExitTransitionKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/animation/core/AnimationVector2D;",
        "Landroidx/compose/ui/graphics/TransformOrigin;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$2;->k:Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$2;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 2
    .line 3
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->a:F

    .line 4
    .line 5
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->b:F

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/TransformOriginKt;->a(FF)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    new-instance v0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
