.class public final Landroidx/lifecycle/FastSafeIterableMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/FastSafeIterableMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/collection/MutableScatterMap;

.field public b:Landroidx/lifecycle/FastSafeIterableMap$Entry;

.field public c:Landroidx/lifecycle/FastSafeIterableMap$Entry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    return-void
.end method
