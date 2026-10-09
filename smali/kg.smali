.class public final synthetic Lkg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroidx/compose/animation/core/Animation;

.field public final synthetic m:Landroidx/compose/animation/core/AnimationVector;

.field public final synthetic n:Landroidx/compose/animation/core/AnimationState;

.field public final synthetic o:F

.field public final synthetic p:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationState;FLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkg;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    iput-object p2, p0, Lkg;->k:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lkg;->l:Landroidx/compose/animation/core/Animation;

    .line 9
    .line 10
    iput-object p4, p0, Lkg;->m:Landroidx/compose/animation/core/AnimationVector;

    .line 11
    .line 12
    iput-object p5, p0, Lkg;->n:Landroidx/compose/animation/core/AnimationState;

    .line 13
    .line 14
    iput p6, p0, Lkg;->o:F

    .line 15
    .line 16
    iput-object p7, p0, Lkg;->p:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    new-instance v0, Landroidx/compose/animation/core/AnimationScope;

    .line 8
    .line 9
    iget-object p1, p0, Lkg;->l:Landroidx/compose/animation/core/Animation;

    .line 10
    .line 11
    move-wide v4, v1

    .line 12
    invoke-interface {p1}, Landroidx/compose/animation/core/Animation;->c()Landroidx/compose/animation/core/TwoWayConverter;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {p1}, Landroidx/compose/animation/core/Animation;->g()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    new-instance v9, Ljg;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iget-object v10, p0, Lkg;->n:Landroidx/compose/animation/core/AnimationState;

    .line 24
    .line 25
    invoke-direct {v9, v1, v10}, Ljg;-><init>(ILandroidx/compose/animation/core/AnimationState;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lkg;->k:Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v3, p0, Lkg;->m:Landroidx/compose/animation/core/AnimationVector;

    .line 31
    .line 32
    move-wide v7, v4

    .line 33
    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/core/AnimationScope;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationVector;JLjava/lang/Object;JLkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    iget v3, p0, Lkg;->o:F

    .line 37
    .line 38
    iget-object v6, p0, Lkg;->p:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    move-wide v1, v4

    .line 41
    move-object v5, v10

    .line 42
    move-object v4, p1

    .line 43
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->g(Landroidx/compose/animation/core/AnimationScope;JFLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lkg;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 47
    .line 48
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method
