.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeactivateCurrentGroup"
.end annotation


# static fields
.field public static final c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {v0, v1, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(III)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 0

    .line 1
    iget p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 2
    .line 3
    new-instance p1, La0;

    .line 4
    .line 5
    const/16 p2, 0xd

    .line 6
    .line 7
    invoke-direct {p1, p2, p4, p3}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->n(ILkotlin/jvm/functions/Function2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
