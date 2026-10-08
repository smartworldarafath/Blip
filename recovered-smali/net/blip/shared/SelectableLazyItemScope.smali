.class public final Lnet/blip/shared/SelectableLazyItemScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyItemScope;


# instance fields
.field public final a:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final b:Lkotlinx/coroutines/flow/MutableSharedFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableSharedFlow;Landroidx/compose/foundation/lazy/LazyItemScope;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/shared/SelectableLazyItemScope;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/blip/shared/SelectableLazyItemScope;->b:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 10
    .line 11
    return-void
.end method
