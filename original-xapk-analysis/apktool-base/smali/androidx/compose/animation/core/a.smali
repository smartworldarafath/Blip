.class public final synthetic Landroidx/compose/animation/core/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/core/a;->j:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 12
    .line 13
    check-cast v1, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/compose/animation/core/TwoWayConverterImpl;->b:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/compose/animation/core/AnimationScope;->f:Landroidx/compose/animation/core/AnimationVector;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p0, p0, Landroidx/compose/animation/core/a;->j:Lkotlin/jvm/functions/Function2;

    .line 24
    .line 25
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
