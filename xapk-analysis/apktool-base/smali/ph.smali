.class public final synthetic Lph;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Ljava/util/List;

.field public final synthetic l:Landroid/content/Context;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Lnet/blip/libblip/frontend/State;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lph;->j:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    iput-object p2, p0, Lph;->k:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lph;->l:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lph;->m:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lph;->n:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iput-object p6, p0, Lph;->o:Lnet/blip/libblip/frontend/State;

    .line 15
    .line 16
    iput-object p7, p0, Lph;->p:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    iput-object p8, p0, Lph;->q:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridScope;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lph;->j:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v2, Lqg;

    .line 12
    .line 13
    const/16 v3, 0xd

    .line 14
    .line 15
    invoke-direct {v2, v3}, Lqg;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lb0;

    .line 19
    .line 20
    const/16 v4, 0xa

    .line 21
    .line 22
    invoke-direct {v3, v4, v0}, Lb0;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 26
    .line 27
    const v4, -0x3f76cd11

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v4, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v2, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->a(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v0, Lqg;

    .line 37
    .line 38
    const/16 v2, 0xe

    .line 39
    .line 40
    invoke-direct {v0, v2}, Lqg;-><init>(I)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lnet/blip/android/ui/home/ComposableSingletons$TransferGridKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 44
    .line 45
    invoke-static {p1, v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->a(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lqg;

    .line 49
    .line 50
    const/16 v2, 0xf

    .line 51
    .line 52
    invoke-direct {v0, v2}, Lqg;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lph;->k:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    new-instance v11, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$2;

    .line 62
    .line 63
    invoke-direct {v11, v0, v4}, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$2;-><init>(Lqg;Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$4;

    .line 67
    .line 68
    invoke-direct {v0, v4}, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$4;-><init>(Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;

    .line 72
    .line 73
    iget-object v5, p0, Lph;->l:Landroid/content/Context;

    .line 74
    .line 75
    iget-object v6, p0, Lph;->m:Lkotlin/jvm/functions/Function1;

    .line 76
    .line 77
    iget-object v7, p0, Lph;->n:Lkotlin/jvm/functions/Function1;

    .line 78
    .line 79
    iget-object v8, p0, Lph;->o:Lnet/blip/libblip/frontend/State;

    .line 80
    .line 81
    iget-object v9, p0, Lph;->p:Lkotlin/jvm/functions/Function1;

    .line 82
    .line 83
    iget-object v10, p0, Lph;->q:Lkotlin/jvm/functions/Function1;

    .line 84
    .line 85
    invoke-direct/range {v3 .. v10}, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;-><init>(Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 89
    .line 90
    const v4, -0x4297e015

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v4, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 94
    .line 95
    .line 96
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 97
    .line 98
    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->b:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 99
    .line 100
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    .line 101
    .line 102
    sget-object v3, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->d:Lz6;

    .line 103
    .line 104
    invoke-direct {v1, v11, v3, v0, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v2, v1}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 108
    .line 109
    .line 110
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 111
    .line 112
    return-object p0
.end method
