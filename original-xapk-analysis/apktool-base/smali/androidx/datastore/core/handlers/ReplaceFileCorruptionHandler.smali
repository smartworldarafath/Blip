.class public final Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/datastore/core/CorruptionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/CorruptionHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ly9;


# direct methods
.method public constructor <init>(Ly9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;->a:Ly9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/datastore/core/CorruptionException;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;->a:Ly9;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ly9;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
