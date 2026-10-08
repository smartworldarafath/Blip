.class public final Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt$platformTextContextMenuToolbarProvider$lambda$1$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt$platformTextContextMenuToolbarProvider$lambda$1$0$$inlined$onDispose$1;->a:Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt$platformTextContextMenuToolbarProvider$lambda$1$0$$inlined$onDispose$1;->a:Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->e:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->h:Lp;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lp;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->a()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->h:Landroid/view/ActionMode;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->h:Landroid/view/ActionMode;

    .line 24
    .line 25
    return-void
.end method
