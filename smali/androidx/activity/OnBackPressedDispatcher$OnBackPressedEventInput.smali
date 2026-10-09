.class final Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;
.super Landroidx/navigationevent/NavigationEventInput;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnBackPressedEventInput"
.end annotation


# instance fields
.field public final c:Landroidx/navigationevent/NavigationEventDispatcher;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/navigationevent/NavigationEventDispatcher;

    .line 5
    .line 6
    new-instance v1, Lp;

    .line 7
    .line 8
    const/16 v2, 0xe

    .line 9
    .line 10
    invoke-direct {v1, v2, p1}, Lp;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroidx/navigationevent/NavigationEventDispatcher;-><init>(Lp;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/navigationevent/NavigationEventDispatcher;->b(Landroidx/navigationevent/NavigationEventInput;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->c:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 0

    .line 1
    return-void
.end method
