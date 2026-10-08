.class public final Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnBackPressedEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigationevent/NavigationEventHandler<",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Landroidx/activity/OnBackPressedCallback;

.field public g:Z


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedCallback;Landroidx/navigationevent/NavigationEventInfo;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/activity/OnBackPressedCallback;->b:Z

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Z)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->f:Landroidx/activity/OnBackPressedCallback;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->g:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->f:Landroidx/activity/OnBackPressedCallback;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedCallback;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->f:Landroidx/activity/OnBackPressedCallback;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedCallback;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Landroidx/navigationevent/NavigationEvent;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/activity/BackEventCompat;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->f:Landroidx/activity/OnBackPressedCallback;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->c(Landroidx/activity/BackEventCompat;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(Landroidx/navigationevent/NavigationEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/activity/BackEventCompat;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->f:Landroidx/activity/OnBackPressedCallback;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->d(Landroidx/activity/BackEventCompat;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->g:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->f:Landroidx/activity/OnBackPressedCallback;

    .line 6
    .line 7
    iget-boolean p1, p1, Landroidx/activity/OnBackPressedCallback;->b:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventHandler;->f(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
