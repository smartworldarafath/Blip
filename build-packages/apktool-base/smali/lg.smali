.class public final synthetic Llg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic k:F

.field public final synthetic l:Landroidx/compose/animation/core/Animation;

.field public final synthetic m:Landroidx/compose/animation/core/AnimationState;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;FLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llg;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    iput p2, p0, Llg;->k:F

    .line 7
    .line 8
    iput-object p3, p0, Llg;->l:Landroidx/compose/animation/core/Animation;

    .line 9
    .line 10
    iput-object p4, p0, Llg;->m:Landroidx/compose/animation/core/AnimationState;

    .line 11
    .line 12
    iput-object p5, p0, Llg;->n:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object p1, p0, Llg;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Landroidx/compose/animation/core/AnimationScope;

    .line 16
    .line 17
    iget v3, p0, Llg;->k:F

    .line 18
    .line 19
    iget-object v4, p0, Llg;->l:Landroidx/compose/animation/core/Animation;

    .line 20
    .line 21
    iget-object v5, p0, Llg;->m:Landroidx/compose/animation/core/AnimationState;

    .line 22
    .line 23
    iget-object v6, p0, Llg;->n:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->g(Landroidx/compose/animation/core/AnimationScope;JFLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
