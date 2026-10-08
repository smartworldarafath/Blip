.class public final Landroidx/navigation/compose/DialogNavigator$Destination;
.super Landroidx/navigation/NavDestination;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/navigation/FloatingWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/compose/DialogNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Destination"
.end annotation


# instance fields
.field public final o:Landroidx/compose/ui/window/DialogProperties;

.field public final p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public constructor <init>(Landroidx/navigation/compose/DialogNavigator;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/window/DialogProperties;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/window/DialogProperties;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/navigation/compose/DialogNavigator$Destination;->o:Landroidx/compose/ui/window/DialogProperties;

    .line 10
    .line 11
    sget-object p1, Landroidx/navigation/compose/ComposableSingletons$DialogNavigatorKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/navigation/compose/DialogNavigator$Destination;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 14
    .line 15
    return-void
.end method
