.class public abstract Lnet/blip/libblip/DerivedStateFlowKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)Lnet/blip/libblip/DerivedStateFlow;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/blip/libblip/DerivedStateFlow;

    .line 5
    .line 6
    new-instance v1, Lp0;

    .line 7
    .line 8
    const/16 v2, 0xc

    .line 9
    .line 10
    invoke-direct {v1, v2, p1, p0}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1}, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lnet/blip/libblip/DerivedStateFlow;-><init>(Lp0;Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
