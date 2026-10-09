.class public final synthetic Ldd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroid/content/Context;

.field public final synthetic k:Lnet/blip/libblip/PeerId;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lnet/blip/libblip/User;

.field public final synthetic n:Landroidx/navigation/NavHostController;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lnet/blip/libblip/PeerId;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/User;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldd;->j:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Ldd;->k:Lnet/blip/libblip/PeerId;

    .line 7
    .line 8
    iput-object p3, p0, Ldd;->l:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Ldd;->m:Lnet/blip/libblip/User;

    .line 11
    .line 12
    iput-object p5, p0, Ldd;->n:Landroidx/navigation/NavHostController;

    .line 13
    .line 14
    iput-object p6, p0, Ldd;->o:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ldd;->o:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ldd;->j:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Ldd;->k:Lnet/blip/libblip/PeerId;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->b(Landroid/content/Context;Lnet/blip/libblip/PeerId;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lnet/blip/libblip/event/AddBlockedUser;

    .line 16
    .line 17
    iget-object v1, p0, Ldd;->m:Lnet/blip/libblip/User;

    .line 18
    .line 19
    iget-object v1, v1, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lnet/blip/libblip/event/AddBlockedUser;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Ldd;->l:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Ldd;->n:Landroidx/navigation/NavHostController;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/navigation/NavController;->c()V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method
