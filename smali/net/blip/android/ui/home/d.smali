.class public final synthetic Lnet/blip/android/ui/home/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Lnet/blip/libblip/PeerPickerViewModel;

.field public final synthetic k:Landroidx/compose/runtime/State;

.field public final synthetic l:Landroidx/navigation/NavController;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Lnet/blip/libblip/PeerPickerViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lnet/blip/android/ui/home/d;->j:Lnet/blip/libblip/PeerPickerViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/home/d;->k:Landroidx/compose/runtime/State;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/home/d;->l:Landroidx/navigation/NavController;

    .line 9
    .line 10
    iput-object p1, p0, Lnet/blip/android/ui/home/d;->m:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lnet/blip/shared/SelectableLazyListScope;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lnet/blip/android/ui/home/d;->k:Landroidx/compose/runtime/State;

    .line 11
    .line 12
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lnet/blip/libblip/PeerPickerContent;

    .line 17
    .line 18
    new-instance v3, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$7$2$1$1$1;

    .line 19
    .line 20
    const-string v8, "retrySearch()V"

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    iget-object v12, v0, Lnet/blip/android/ui/home/d;->j:Lnet/blip/libblip/PeerPickerViewModel;

    .line 25
    .line 26
    const-class v6, Lnet/blip/libblip/PeerPickerViewModel;

    .line 27
    .line 28
    const-string v7, "retrySearch"

    .line 29
    .line 30
    move-object v5, v12

    .line 31
    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Lb;

    .line 35
    .line 36
    const/16 v5, 0x11

    .line 37
    .line 38
    iget-object v6, v0, Lnet/blip/android/ui/home/d;->l:Landroidx/navigation/NavController;

    .line 39
    .line 40
    iget-object v0, v0, Lnet/blip/android/ui/home/d;->m:Landroidx/compose/runtime/MutableState;

    .line 41
    .line 42
    invoke-direct {v4, v5, v6, v0}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$7$2$1$1$3;

    .line 46
    .line 47
    const-string v15, "removePeer(Lnet/blip/libblip/PeerId;)V"

    .line 48
    .line 49
    const/16 v16, 0x0

    .line 50
    .line 51
    const/4 v11, 0x1

    .line 52
    const-class v13, Lnet/blip/libblip/PeerPickerViewModel;

    .line 53
    .line 54
    const-string v14, "removePeer"

    .line 55
    .line 56
    move-object v10, v5

    .line 57
    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    new-instance v6, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$7$2$1$1$4;

    .line 61
    .line 62
    const-string v15, "blockUser(Ljava/lang/String;)V"

    .line 63
    .line 64
    const-class v13, Lnet/blip/libblip/PeerPickerViewModel;

    .line 65
    .line 66
    const-string v14, "blockUser"

    .line 67
    .line 68
    move-object v10, v6

    .line 69
    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    move-object v0, v1

    .line 73
    move-object v1, v2

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/peerpicker/AndroidPeerPickerListItemsKt;->b(Lnet/blip/shared/SelectableLazyListScope;Lnet/blip/libblip/PeerPickerContent;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object v0
.end method
