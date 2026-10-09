.class public final synthetic Landroidx/compose/foundation/lazy/layout/g;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/foundation/lazy/layout/g;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/g;->k:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/g;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/g;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/g;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/g;->k:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 11
    .line 12
    check-cast p1, Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Landroidx/compose/runtime/saveable/SaveableStateHolder;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 21
    .line 22
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->l:Landroidx/collection/MutableScatterSet;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroidx/collection/MutableScatterSet;->j(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$lambda$0$0$$inlined$onDispose$1;

    .line 30
    .line 31
    invoke-direct {p1, p0, v1}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$lambda$0$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
