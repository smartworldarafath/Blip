.class public abstract Lnet/blip/android/ui/navigation/ShareInAppKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ILandroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function1;
    .locals 6

    .line 1
    and-int/lit8 p0, p0, 0x1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string p0, "in_app_share"

    .line 6
    .line 7
    :goto_0
    move-object v2, p0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-string p0, "home_blank_state_menu"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :goto_1
    sget-object p0, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    move-object v3, p0

    .line 21
    check-cast v3, Landroidx/navigation/NavHostController;

    .line 22
    .line 23
    sget-object p0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lnet/blip/libblip/Core;

    .line 30
    .line 31
    iget-object v1, p0, Lnet/blip/libblip/Core;->b:Lc;

    .line 32
    .line 33
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    move-object v4, p0

    .line 40
    check-cast v4, Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 47
    .line 48
    if-ne p0, v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Ls2;

    .line 51
    .line 52
    const/16 v5, 0xa

    .line 53
    .line 54
    invoke-direct/range {v0 .. v5}, Ls2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/io/Serializable;Landroidx/navigation/NavHostController;Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-object p0, v0

    .line 61
    :cond_1
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 62
    .line 63
    return-object p0
.end method
