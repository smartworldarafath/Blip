.class public final Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;
.super Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfaceViewHierarchyNode"
.end annotation


# instance fields
.field public final h:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;IIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move v1, p2

    .line 3
    move v2, p3

    .line 4
    move v3, p4

    .line 5
    move-object v4, p5

    .line 6
    move v5, p6

    .line 7
    move v6, p7

    .line 8
    move-object/from16 v7, p8

    .line 9
    .line 10
    invoke-direct/range {v0 .. v7}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;-><init>(IIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;->h:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-void
.end method
