.class public final synthetic Landroidx/compose/foundation/lazy/layout/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/b;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/b;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/b;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/b;->k:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p1, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;->x:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 18
    .line 19
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/List;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    filled-new-array {p1}, [Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 38
    .line 39
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->k:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 43
    .line 44
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 45
    .line 46
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$lambda$1$0$$inlined$onDispose$1;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 53
    .line 54
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 55
    .line 56
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$lambda$0$0$0$$inlined$onDispose$1;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$lambda$0$0$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
