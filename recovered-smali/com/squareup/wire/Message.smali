.class public abstract Lcom/squareup/wire/Message;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final transient j:Lcom/squareup/wire/ProtoAdapter;

.field public final transient k:Lokio/ByteString;

.field public transient l:I


# direct methods
.method public constructor <init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/squareup/wire/Message;->j:Lcom/squareup/wire/ProtoAdapter;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/squareup/wire/Message;->k:Lokio/ByteString;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Lokio/ByteString;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/Message;->k:Lokio/ByteString;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method
