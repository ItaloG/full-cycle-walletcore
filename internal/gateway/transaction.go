package gateway

import "github.com/ItaloG/full-cycle-walletcore/internal/entity"

type TransactionGateway interface {
	Create(transaction *entity.Transaction) error
}
