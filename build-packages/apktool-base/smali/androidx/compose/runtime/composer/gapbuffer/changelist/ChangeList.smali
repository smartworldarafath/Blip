.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;
.super Landroidx/compose/runtime/Changes;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
