.class final Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/unit/IntSize;",
        "Landroidx/compose/ui/unit/IntSize;",
        "Landroidx/compose/animation/core/SpringSpec<",
        "Landroidx/compose/ui/unit/IntSize;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final k:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->k:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 2
    .line 3
    iget-wide p0, p1, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 4
    .line 5
    check-cast p2, Landroidx/compose/ui/unit/IntSize;

    .line 6
    .line 7
    iget-wide p0, p2, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 8
    .line 9
    sget-object p0, Landroidx/compose/animation/core/VisibilityThresholdsKt;->a:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p0, Landroidx/compose/ui/unit/IntSize;

    .line 12
    .line 13
    const-wide p1, 0x100000001L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    const/4 p2, 0x0

    .line 23
    const/high16 v0, 0x43c80000    # 400.0f

    .line 24
    .line 25
    invoke-static {p2, v0, p0, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
