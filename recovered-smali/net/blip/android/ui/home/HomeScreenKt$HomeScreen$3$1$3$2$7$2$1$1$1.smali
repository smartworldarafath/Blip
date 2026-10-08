.class final synthetic Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$7$2$1$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnet/blip/libblip/PeerPickerViewModel;

    .line 4
    .line 5
    iget-object v0, p0, Lnet/blip/libblip/PeerPickerViewModel;->a:Lnet/blip/libblip/Core;

    .line 6
    .line 7
    iget-object v0, v0, Lnet/blip/libblip/Core;->b:Lc;

    .line 8
    .line 9
    new-instance v1, Lnet/blip/libblip/event/Search;

    .line 10
    .line 11
    iget-object v2, p0, Lnet/blip/libblip/PeerPickerViewModel;->b:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lnet/blip/libblip/PeerPickerViewModel;->e:Lkotlinx/coroutines/flow/StateFlow;

    .line 14
    .line 15
    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v1, v2, p0}, Lnet/blip/libblip/event/Search;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method
