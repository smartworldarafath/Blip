.class public final Landroidx/datastore/core/Data;
.super Landroidx/datastore/core/State;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/datastore/core/State<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:I


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/datastore/core/State;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/datastore/core/Data;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput p1, p0, Landroidx/datastore/core/Data;->c:I

    .line 7
    .line 8
    return-void
.end method
