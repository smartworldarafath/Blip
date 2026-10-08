.class public abstract Lnet/blip/shared/RememberViewModelsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/PeerPickerViewModel;
    .locals 4

    .line 1
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lnet/blip/libblip/Core;

    .line 10
    .line 11
    const v1, 0x1a36d5ed

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    new-instance v1, Lnet/blip/libblip/PeerPickerViewModel;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v0, v3}, Lnet/blip/libblip/PeerPickerViewModel;-><init>(Lnet/blip/libblip/Core;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    check-cast v1, Lnet/blip/libblip/PeerPickerViewModel;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    if-ne v3, v2, :cond_2

    .line 57
    .line 58
    :cond_1
    new-instance v3, Lkb;

    .line 59
    .line 60
    const/4 v0, 0x7

    .line 61
    invoke-direct {v3, v0, v1}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-static {v0, v3, p0, v2}, Lnet/blip/shared/OnDisposeKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 75
    .line 76
    .line 77
    return-object v1
.end method
