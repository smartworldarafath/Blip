.class public final Landroidx/navigation/compose/DialogHostKt$DialogHost$lambda$3$1$0$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/navigation/compose/DialogNavigator;

.field public final synthetic b:Landroidx/navigation/NavBackStackEntry;

.field public final synthetic c:Landroidx/compose/runtime/snapshots/SnapshotStateList;


# direct methods
.method public constructor <init>(Landroidx/navigation/compose/DialogNavigator;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$lambda$3$1$0$0$$inlined$onDispose$1;->a:Landroidx/navigation/compose/DialogNavigator;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$lambda$3$1$0$0$$inlined$onDispose$1;->b:Landroidx/navigation/NavBackStackEntry;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$lambda$3$1$0$0$$inlined$onDispose$1;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$lambda$3$1$0$0$$inlined$onDispose$1;->a:Landroidx/navigation/compose/DialogNavigator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$lambda$3$1$0$0$$inlined$onDispose$1;->b:Landroidx/navigation/NavBackStackEntry;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorState;->b(Landroidx/navigation/NavBackStackEntry;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/navigation/compose/DialogHostKt$DialogHost$lambda$3$1$0$0$$inlined$onDispose$1;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
