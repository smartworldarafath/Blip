.class public final Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigationevent/NavigationEventHandler<",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Landroidx/activity/compose/internal/BackHandlerCompat;


# direct methods
.method public constructor <init>(Landroidx/activity/compose/internal/BackHandlerCompat;Landroidx/navigationevent/NavigationEventInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->f:Landroidx/activity/compose/internal/BackHandlerCompat;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->f:Landroidx/activity/compose/internal/BackHandlerCompat;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    .line 1
    new-instance p0, Landroidx/activity/BackEventCompat;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    .line 1
    new-instance p0, Landroidx/activity/BackEventCompat;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
