.class public final synthetic Lnet/blip/android/ui/settings/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/settings/a;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/settings/a;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/settings/a;->l:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/ui/settings/a;->m:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/blip/android/ui/settings/a;->n:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/blip/android/ui/settings/a;->o:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/blip/android/ui/settings/a;->p:Landroidx/compose/runtime/MutableIntState;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    iget-object v1, p0, Lnet/blip/android/ui/settings/a;->l:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "choose"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v5, p0, Lnet/blip/android/ui/settings/a;->k:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v1, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    iget-object v2, p0, Lnet/blip/android/ui/settings/a;->m:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    iget-object v3, p0, Lnet/blip/android/ui/settings/a;->n:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lnet/blip/android/ui/settings/a;->o:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v6, p0, Lnet/blip/android/ui/settings/a;->p:Landroidx/compose/runtime/MutableIntState;

    .line 33
    .line 34
    invoke-direct/range {v1 .. v7}, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x3

    .line 38
    iget-object p0, p0, Lnet/blip/android/ui/settings/a;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {p0, v0, v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Lnet/blip/libblip/event/TransferSetCustomDefaultSavePath;

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lnet/blip/libblip/event/TransferSetCustomDefaultSavePath;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method
