.class public abstract Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseRequiresApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;,
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$GenericViewHierarchyNode;,
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;,
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;,
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:Z

.field public final e:Z

.field public final f:Landroid/graphics/Rect;

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(IIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->a:I

    .line 5
    .line 6
    iput p2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->b:I

    .line 7
    .line 8
    iput p3, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->c:F

    .line 9
    .line 10
    iput-boolean p5, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->d:Z

    .line 11
    .line 12
    iput-boolean p6, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->e:Z

    .line 13
    .line 14
    iput-object p7, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->f:Landroid/graphics/Rect;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->g:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->a(Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method
