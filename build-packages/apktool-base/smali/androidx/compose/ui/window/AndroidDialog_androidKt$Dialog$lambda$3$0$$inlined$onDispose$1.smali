.class public final Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$lambda$3$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/compose/ui/window/DialogWrapper;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/window/DialogWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$lambda$3$0$$inlined$onDispose$1;->a:Landroidx/compose/ui/window/DialogWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$lambda$3$0$$inlined$onDispose$1;->a:Landroidx/compose/ui/window/DialogWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->r:Landroidx/compose/ui/window/DialogLayout;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->e()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
