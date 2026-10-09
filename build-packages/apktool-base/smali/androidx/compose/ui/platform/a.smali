.class public final synthetic Landroidx/compose/ui/platform/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/a;->j:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/platform/a;->j:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getOutOfFrameExecutor()Landroidx/compose/ui/platform/AndroidComposeView;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$legacyTextInputServiceAndroid$1$1;

    .line 12
    .line 13
    const-string v5, "run()V"

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    const-class v3, Ljava/lang/Runnable;

    .line 18
    .line 19
    const-string v4, "run"

    .line 20
    .line 21
    move-object v2, p1

    .line 22
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->E(Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
