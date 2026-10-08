.class public abstract Lnet/blip/shared/ContentPicker_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/shared/ContentPicker$ContentType;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lnet/blip/shared/ContentPicker$ContentType$File;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "file"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lnet/blip/shared/ContentPicker$ContentType$Image;->a:Lnet/blip/shared/ContentPicker$ContentType$Image;

    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string p0, "image"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    sget-object v0, Lnet/blip/shared/ContentPicker$ContentType$Video;->a:Lnet/blip/shared/ContentPicker$ContentType$Video;

    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const-string p0, "video"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    sget-object v0, Lnet/blip/shared/ContentPicker$ContentType$ImageAndVideo;->a:Lnet/blip/shared/ContentPicker$ContentType$ImageAndVideo;

    .line 31
    .line 32
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const-string p0, "image_and_video"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    sget-object v0, Lnet/blip/shared/ContentPicker$ContentType$Directory;->a:Lnet/blip/shared/ContentPicker$ContentType$Directory;

    .line 42
    .line 43
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    const-string p0, "directory"

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_4
    invoke-static {}, Lk8;->e()V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static final b(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function2;
    .locals 4

    .line 1
    sget-object v0, Landroidx/activity/compose/LocalActivityKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

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
    instance-of v1, v0, Landroidx/activity/ComponentActivity;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v2

    .line 18
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 29
    .line 30
    if-ne v3, v1, :cond_3

    .line 31
    .line 32
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget-object v1, Lio/github/vinceglb/filekit/dialogs/FileKitDialog;->a:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/activity/ComponentActivity;->q:Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sput-object v3, Lio/github/vinceglb/filekit/dialogs/FileKitDialog;->a:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    :cond_2
    new-instance v3, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;

    .line 49
    .line 50
    invoke-direct {v3, v0, v2}, Lnet/blip/shared/ContentPicker_androidKt$rememberContentPickerLauncher$1$2;-><init>(Landroidx/activity/ComponentActivity;Lkotlin/coroutines/Continuation;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 57
    .line 58
    return-object v3
.end method
