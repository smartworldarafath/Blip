.class public final Lnet/blip/libblip/PeerPickerViewModel;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lnet/blip/libblip/Core;

.field public final b:Ljava/lang/String;

.field public final c:Lnet/blip/libblip/DerivedStateFlow;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final e:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lnet/blip/libblip/Core;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/libblip/PeerPickerViewModel;->a:Lnet/blip/libblip/Core;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/blip/libblip/PeerPickerViewModel;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p1, Lnet/blip/libblip/Core;->a:Lkotlinx/coroutines/flow/StateFlow;

    .line 12
    .line 13
    new-instance p2, Le9;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p2, p0, v0}, Le9;-><init>(Lnet/blip/libblip/PeerPickerViewModel;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lnet/blip/libblip/DerivedStateFlowKt;->a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)Lnet/blip/libblip/DerivedStateFlow;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lnet/blip/libblip/PeerPickerViewModel;->c:Lnet/blip/libblip/DerivedStateFlow;

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lnet/blip/libblip/PeerPickerViewModel;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lnet/blip/libblip/PeerPickerViewModel;->e:Lkotlinx/coroutines/flow/StateFlow;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/blip/libblip/PeerPickerViewModel;->a:Lnet/blip/libblip/Core;

    .line 5
    .line 6
    iget-object p0, p0, Lnet/blip/libblip/Core;->b:Lc;

    .line 7
    .line 8
    new-instance v0, Lnet/blip/libblip/event/AddBlockedUser;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lnet/blip/libblip/event/AddBlockedUser;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b(Lnet/blip/libblip/PeerId;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lnet/blip/libblip/PeerId_DerivedKt;->c(Lnet/blip/libblip/PeerId;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lnet/blip/libblip/PeerPickerViewModel;->a:Lnet/blip/libblip/Core;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lnet/blip/libblip/Core;->b:Lc;

    .line 13
    .line 14
    new-instance v0, Lnet/blip/libblip/event/RemoveContact;

    .line 15
    .line 16
    iget-object p1, p1, Lnet/blip/libblip/PeerId;->m:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lnet/blip/libblip/event/RemoveContact;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p0, p0, Lnet/blip/libblip/Core;->b:Lc;

    .line 26
    .line 27
    new-instance v0, Lnet/blip/libblip/event/RemoveDevice;

    .line 28
    .line 29
    iget-object p1, p1, Lnet/blip/libblip/PeerId;->n:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lnet/blip/libblip/event/RemoveDevice;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/blip/libblip/PeerPickerViewModel;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lnet/blip/libblip/PeerPickerViewModel;->a:Lnet/blip/libblip/Core;

    .line 10
    .line 11
    iget-object v0, v0, Lnet/blip/libblip/Core;->b:Lc;

    .line 12
    .line 13
    new-instance v1, Lnet/blip/libblip/event/Search;

    .line 14
    .line 15
    iget-object p0, p0, Lnet/blip/libblip/PeerPickerViewModel;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lnet/blip/libblip/event/Search;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method
