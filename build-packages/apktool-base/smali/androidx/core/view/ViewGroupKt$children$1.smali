.class public final Landroidx/core/view/ViewGroupKt$children$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$children$1;->a:Landroid/view/ViewGroup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/view/ViewGroupKt$iterator$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/core/view/ViewGroupKt$children$1;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/core/view/ViewGroupKt$iterator$1;-><init>(Landroid/view/ViewGroup;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
