.class public final Lnet/blip/libblip/TransferChoosePeerViewModel;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lnet/blip/libblip/Core;

.field public final b:Ljava/lang/String;

.field public final c:Lnet/blip/libblip/DerivedStateFlow;

.field public final d:Lnet/blip/libblip/DerivedStateFlow;


# direct methods
.method public constructor <init>(Lnet/blip/libblip/Core;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->a:Lnet/blip/libblip/Core;

    .line 11
    .line 12
    iput-object p2, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->b:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p1, Lnet/blip/libblip/Core;->a:Lkotlinx/coroutines/flow/StateFlow;

    .line 15
    .line 16
    new-instance p2, Loh;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p2, p0, v0}, Loh;-><init>(Lnet/blip/libblip/TransferChoosePeerViewModel;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lnet/blip/libblip/DerivedStateFlowKt;->a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)Lnet/blip/libblip/DerivedStateFlow;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->c:Lnet/blip/libblip/DerivedStateFlow;

    .line 27
    .line 28
    new-instance p2, Lqg;

    .line 29
    .line 30
    const/16 v0, 0xc

    .line 31
    .line 32
    invoke-direct {p2, v0}, Lqg;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lnet/blip/libblip/DerivedStateFlowKt;->a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)Lnet/blip/libblip/DerivedStateFlow;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->d:Lnet/blip/libblip/DerivedStateFlow;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/blip/libblip/TransferChoosePeerViewModel;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/blip/libblip/TransferChoosePeerViewModel;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->a:Lnet/blip/libblip/Core;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/blip/libblip/TransferChoosePeerViewModel;->a:Lnet/blip/libblip/Core;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object p0, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p1, Lnet/blip/libblip/TransferChoosePeerViewModel;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->a:Lnet/blip/libblip/Core;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TransferChoosePeerViewModel(core="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->a:Lnet/blip/libblip/Core;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", transferId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
