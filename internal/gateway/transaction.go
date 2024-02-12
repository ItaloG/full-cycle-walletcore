package gateway

import "github.com/ItaloG/Go-expert/full-cycle-walletcore/internal/entity"

type TransactionGateway interface {
	Create(transaction *entity.Transaction) error
}
